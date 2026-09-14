#include <QTest>
#include "../lowbatterywatcher.hpp"

class TestLowBatteryWatcher : public QObject {
    Q_OBJECT

private slots:
    void thresholdsFireOnceInOrder()
    {
        LowBatteryWatcher watcher;
        QVERIFY(!watcher.evaluate(21, true, false));

        const auto twenty = watcher.evaluate(20, true, false);
        QVERIFY(twenty);
        QCOMPARE(twenty->threshold, quint8(20));
        QCOMPARE(twenty->level, quint8(20));
        QVERIFY(!watcher.evaluate(19, true, false));

        const auto ten = watcher.evaluate(10, true, false);
        QVERIFY(ten);
        QCOMPARE(ten->threshold, quint8(10));
        QVERIFY(!watcher.evaluate(9, true, false));

        const auto five = watcher.evaluate(5, true, false);
        QVERIFY(five);
        QCOMPARE(five->threshold, quint8(5));
        QVERIFY(!watcher.evaluate(4, true, false));
    }

    void firstLowReadingUsesMostUrgentThreshold()
    {
        LowBatteryWatcher watcher;
        const auto alert = watcher.evaluate(8, true, false);
        QVERIFY(alert);
        QCOMPARE(alert->threshold, quint8(10));
        QCOMPARE(alert->level, quint8(8));
        QVERIFY(watcher.notifiedAt(20));
        QVERIFY(watcher.notifiedAt(10));
        QVERIFY(!watcher.notifiedAt(5));
    }

    void oneUpdateNeverCreatesAThresholdBurst()
    {
        LowBatteryWatcher watcher;
        const auto alert = watcher.evaluate(4, true, false);
        QVERIFY(alert);
        QCOMPARE(alert->threshold, quint8(5));
        QVERIFY(!watcher.evaluate(4, true, false));
        QVERIFY(watcher.notifiedAt(20));
        QVERIFY(watcher.notifiedAt(10));
        QVERIFY(watcher.notifiedAt(5));
    }

    void chargingRearmsTheSequence()
    {
        LowBatteryWatcher watcher;
        QVERIFY(watcher.evaluate(20, true, false));
        QVERIFY(!watcher.evaluate(20, true, true));
        QVERIFY(!watcher.notifiedAt(20));
        QCOMPARE(watcher.evaluate(20, true, false)->threshold, quint8(20));
    }

    void recoveryNeedsFivePercentHysteresis()
    {
        LowBatteryWatcher watcher;
        QVERIFY(watcher.evaluate(20, true, false));
        QVERIFY(!watcher.evaluate(24, true, false));
        QVERIFY(watcher.notifiedAt(20));
        QVERIFY(!watcher.evaluate(25, true, false));
        QVERIFY(!watcher.notifiedAt(20));
        QCOMPARE(watcher.evaluate(20, true, false)->threshold, quint8(20));
    }

    void unavailableReadingKeepsTheSequence()
    {
        LowBatteryWatcher watcher;
        QVERIFY(watcher.evaluate(20, true, false));
        QVERIFY(!watcher.evaluate(100, false, false));
        QVERIFY(watcher.notifiedAt(20));
        QVERIFY(!watcher.evaluate(20, true, false));
    }

    void earbudAndCaseSequencesAreIndependent()
    {
        LowBatteryWatcher earbuds;
        LowBatteryWatcher batteryCase;
        QCOMPARE(earbuds.evaluate(20, true, false)->threshold, quint8(20));
        QCOMPARE(batteryCase.evaluate(20, true, false)->threshold, quint8(20));
        QVERIFY(!earbuds.evaluate(20, true, false));
        QVERIFY(!batteryCase.evaluate(20, true, false));
    }
};

QTEST_GUILESS_MAIN(TestLowBatteryWatcher)
#include "tst_lowbatterywatcher.moc"
