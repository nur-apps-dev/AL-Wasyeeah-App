import 'package:al_wasyeah/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';
import '../../widgets/widgets.dart';

class FamilyInfoScreen extends StatefulWidget {
  const FamilyInfoScreen({super.key});

  @override
  State<FamilyInfoScreen> createState() => _FamilyInfoScreenState();
}

class _FamilyInfoScreenState extends State<FamilyInfoScreen> {
  TextEditingController spouseNameCNTRL = TextEditingController();
  TextEditingController PassOrNIDController = TextEditingController();
  TextEditingController passOrNIDController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  ProfileController profileController = Get.put(ProfileController());
  List<bool> isSelected = [true, false];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
            height: Get.height,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    ///=============="Father’s Information================================
                    SizedBox(height: 20.h),
                    Center(child: CustomText(text: "Family Information".tr,fontsize: 20,)),
                    SizedBox(height: 20.h),
                    CustomText(text: "Spouse Name".tr,color: AppColors.hitTextColor000000,fontsize: 16 .sp,),
                    SizedBox(height: 10.h),
                    CustomTextField(
                      controller: spouseNameCNTRL,
                      hintText: "Father’s Name".tr,
                      borderColor: AppColors.secondaryPrimaryColor,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Spouse Name'.tr;
                        }
                        return null;

                      },
                    ),
                    SizedBox(height: 20.h),
                    CustomDropdown(label: "Profession".tr,items: profileController.profession,selectedValue: profileController.selectedProfession,),
                    SizedBox(height: 20.h),
                    CustomDropdown(label: "Nationality".tr,items: profileController.profession,selectedValue: profileController.selectedProfession,),
                    ///============NID/PASSPORT No*====================
                    SizedBox(height: 20.h),
                    CustomText(text: "NID/Passport No".tr,color: AppColors.hitTextColor000000,fontsize: 16.sp,),
                    SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller:  passOrNIDController,
                            hintText: "NID/Passport No".tr,
                            borderColor: AppColors.secondaryPrimaryColor,
                            onChange: (value){},
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'NID/Passport No'.tr;
                              }
                              return null;

                            },
                          ),
                        ),
                        SizedBox(width: 6.w,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 6.w),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: IconButton(
                            icon:Icon(Icons.attach_file_outlined,color: AppColors.primaryColor,),
                            onPressed: () {
                              // Add your action here
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    CustomText(text: "Mobile".tr,color: AppColors.hitTextColor000000,fontsize: 16 .sp,),
                    SizedBox(height: 10.h),
                    CustomTextField(
                      controller: mobileController,
                      hintText: "Mobile".tr,
                      borderColor: AppColors.secondaryPrimaryColor,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Mobile'.tr;
                        }
                        return null;

                      },
                    ),
                    SizedBox(height: 16.h),
                    Center(
                      child: ToggleButtons(
                        isSelected: isSelected,
                        onPressed: (index) {
                          setState(() {
                            // Allow only one button to be selected at a time
                            for (int i = 0; i < isSelected.length; i++) {
                              isSelected[i] = i == index;
                            }
                          });
                        },
                        borderRadius: BorderRadius.circular(8),
                        selectedColor: Colors.white,
                        fillColor: isSelected[1] ? Colors.red : Colors.green,
                        color: Colors.black,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Text('Alive'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Text('Death'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.h,),
                    ///=============="Father’s Information================================
                    SizedBox(height: 20.h),
                    Center(child: CustomText(text: "Mother’s Information".tr,fontsize: 20,)),

                    SizedBox(height: 20.h),
                    CustomDropdown(label: "Profession".tr,items: profileController.profession,selectedValue: profileController.selectedProfession,),
                    SizedBox(height: 20.h),
                    CustomDropdown(label: "Nationality".tr,items: profileController.profession,selectedValue: profileController.selectedProfession,),
                    ///============NID/PASSPORT No*====================
                    SizedBox(height: 20.h),
                    CustomText(text: "NID/Passport No".tr,color: AppColors.hitTextColor000000,fontsize: 16.sp,),
                    SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller:  passOrNIDController,
                            hintText: "NID/Passport No".tr,
                            borderColor: AppColors.secondaryPrimaryColor,
                            onChange: (value){},
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'NID/Passport No'.tr;
                              }
                              return null;

                            },
                          ),
                        ),
                        SizedBox(width: 6.w,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 6.w),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: IconButton(
                            icon:Icon(Icons.attach_file_outlined,color: AppColors.primaryColor,),
                            onPressed: () {
                              // Add your action here
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Center(
                      child: ToggleButtons(
                        isSelected: isSelected,
                        onPressed: (index) {
                          setState(() {
                            // Allow only one button to be selected at a time
                            for (int i = 0; i < isSelected.length; i++) {
                              isSelected[i] = i == index;
                            }
                          });
                        },
                        borderRadius: BorderRadius.circular(8),
                        selectedColor: Colors.white,
                        fillColor: isSelected[1] ? Colors.red : Colors.green,
                        color: Colors.black,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Text('Alive'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Text('Death'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.h),
                    ///=============Button====================
                    CustomButtonCommon(
                      // loading: authController.loadingLoading.value == true,
                      title: "Next".tr,
                      onpress: () {
                        //    Get.toNamed(AppRoutes.otpScreen,preventDuplicates: false);
                        // if (_forRegKey.currentState!.validate()) {
                        //   // authController.loginHandle(
                        //   //     emailController.text, passController.text);
                        // }
                      },),
                    SizedBox(height: 16.h),
                  ],
                ),
              ),
            )));
  }
}