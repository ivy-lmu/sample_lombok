package sample_lombok.sample;

import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Predicate;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class StringUtil {
    public static Predicate<String> buildTextFilter(String keyword) {
        String strimKeyword = Optional.ofNullable(keyword).map(String::trim).orElse(null);
        return value -> StringUtils.containsIgnoreCase(value, strimKeyword);
    }
    
    public static Predicate<String> buildMultipleSelectionFilter(List<String> keywords) {
        return data-> CollectionUtils.emptyIfNull(keywords)
                .stream()
                .filter(Objects::nonNull)
                .anyMatch(keyword -> buildSelectionFilter(keyword).test(data));
    }
    
    private static Predicate<String> buildSelectionFilter(String keyword) {
        String strimKeyword = Optional.ofNullable(keyword).map(String::trim).orElse(null);
        return value-> StringUtils.equals(value, strimKeyword);
    }
}
