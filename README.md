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

## 2. 블록 다이어그램

 ### 2.1 4 stage 파이프라인 구성의 버터플라이 유닛

<img width = "80%" src="https://github.com/HeadlessJohn/FFT_16/blob/main/DOCS/Butterfly_unit.png?raw=true"> 

### 2.2 전체 구조도

<img width = "80%" src="https://github.com/HeadlessJohn/FFT_16/blob/main/DOCS/FFT_Block_diagram.png?raw=true"> 

## 3. 검증

### 3.1 테스트 벤치, 실제 출력 검증

<img width = "80%" src="https://github.com/HeadlessJohn/FFT_16/blob/main/DOCS/FFT_TB.png?raw=true">

### 3.2 하드웨어 사용량

<img width = "80%" src="https://github.com/HeadlessJohn/FFT_16/blob/main/DOCS/Report.png?raw=true"> 

## 4. 프로젝트 기여자

- 유재훈 (o_ayjh@naver.com)

- 유승범 (ca0602@naver.com)
