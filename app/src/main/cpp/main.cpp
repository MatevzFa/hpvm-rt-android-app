//
// Created by matevz on 12.11.2020.
//

#include <jni.h>
#include <android/log.h>

#include "example-hpvm-sum.h"

#define TAG "AndroidHPVM"
#define LOGI(...) ((void)__android_log_print(ANDROID_LOG_INFO, TAG, __VA_ARGS__))

extern "C"
JNIEXPORT jint JNICALL
Java_si_matevzfa_hpvm_MainActivity_runHPVM(JNIEnv *env, jobject thiz) {
    int a = hpvm_example_sum();

    return a;
}
