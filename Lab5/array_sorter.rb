class ArraySorter
    def self.sort_by_length(arr)
        arr.sort_by(&:length)
    end
end
# Можно заменить на модуль, тогда не будет self (т.к. не подразумеваем создание объекта)