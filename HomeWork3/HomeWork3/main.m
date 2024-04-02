//
//  main.m
//  HomeWork3
//
//  Created by Денис Шакуров on 02.04.2024.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [Doctor new];
        Patient *patient = [Patient new];
        doctor.delegate = patient;
        [doctor preparePill];
    }
    return 0;
}
