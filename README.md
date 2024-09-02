# FFT 16point Verilog RTL design

## 1. 프로젝트 개요

### 1.1 푸리에 변환

푸리에 변환은 일반적으로 시간 영역에서 입력된 데이터를 주파수 영역으로 변환하기 위해 사용됩니다.

FFT는 DFT와 같은 결과를 도출하면서 연산의 시간복잡도를 크게 감소시킨 효율적인 알고리즘입니다.

### 1.2 목표

- FFT DIT Radix-2 모듈 설계
- 16point 연산
- 16bit 입출력
- 4stage 파이프라이닝

### 1.3 사용 부품

- Basys 3
- STM32-F411 RET6 Nucleo
