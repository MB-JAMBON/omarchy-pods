#pragma once

#include <QtGlobal>
#include <array>
#include <optional>

struct LowBatteryAlert {
    quint8 threshold;
    quint8 level;
};

// Tracks the three warnings for one battery group across a discharge cycle.
class LowBatteryWatcher {
public:
    static constexpr std::array<quint8, 3> thresholds = {20, 10, 5};
    static constexpr quint8 resetLevel = 25;

    std::optional<LowBatteryAlert> evaluate(quint8 level, bool available, bool charging)
    {
        if (!available) return std::nullopt;
        if (charging || level >= resetLevel) {
            reset();
            return std::nullopt;
        }

        int crossed = -1;
        for (int index = 0; index < static_cast<int>(thresholds.size()); ++index) {
            if (level <= thresholds[index] && !notifiedAt(thresholds[index])) crossed = index;
        }
        if (crossed < 0) return std::nullopt;

        for (int index = 0; index <= crossed; ++index) {
            m_notifiedMask |= static_cast<quint8>(1U << index);
        }
        return LowBatteryAlert { thresholds[crossed], level };
    }

    bool notifiedAt(quint8 threshold) const
    {
        for (int index = 0; index < static_cast<int>(thresholds.size()); ++index) {
            if (thresholds[index] == threshold) {
                return (m_notifiedMask & static_cast<quint8>(1U << index)) != 0;
            }
        }
        return false;
    }

    void reset() { m_notifiedMask = 0; }

private:
    quint8 m_notifiedMask = 0;
};
