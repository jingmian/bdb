# 所有 cc 文件
SOURCES := $(shell find src -name *.cc)

# 所有 头文件
HEADERS := $(shell find include -name *.hh)

bdb: $(SOURCES) $(HEADERS)
	g++ -g -std=c++11 -Iinclude $< -o $@


.PHONY: clean
clean:
	rm -rf bdb
