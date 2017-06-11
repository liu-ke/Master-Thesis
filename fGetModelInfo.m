function [sData,sPathOut,sOptiModel] = fGetModelInfo( sModel )
% get necessary image database information and optimal pre-trained model
% input
% sModel        desired model

% (c) Thomas Kuestner, thomas.kuestner@iss.uni-stuttgart.de, 2017

% get current path
sCurrPath = fileparts(mfilename('fullpath'));

switch sModel
    case 'artifact_type'
        sData.Head = ['dicom_sorted',filesep,'t1_tse_tra_Kopf_0002'];
        sData.Head_m = ['dicom_sorted',filesep,'t1_tse_tra_Kopf_Motion_0003'];
        sData.Becken_t1 = ['dicom_sorted',filesep,'t1_tse_tra_fs_Becken_0008'];
        sData.Becken_m = ['dicom_sorted',filesep,'t1_tse_tra_fs_Becken_Motion_0010'];
        sData.Becken_t2 = ['dicom_sorted',filesep,'t2_tse_tra_fs_Becken_0009'];
        sData.Becken_s = ['dicom_sorted',filesep,'t2_tse_tra_fs_Becken_Shim_xz_0012'];
        sData.Liver_t1 = ['dicom_sorted',filesep,'t1_tse_tra_fs_mbh_Leber_0004'];
        sData.Liver_m = ['dicom_sorted',filesep,'t1_tse_tra_fs_mbh_Leber_Motion_0005'];
        sData.Liver_t2 = ['dicom_sorted',filesep,'t2_tse_tra_fs_navi_Leber_0006'];
        sData.Liver_s = ['dicom_sorted',filesep,'t2_tse_tra_fs_navi_Leber_Shim_xz_0007'];
        if(ispc)
            sPathOut = 'F:\Courses\INFOTECH\MasterThesis\LIUKE\NOTSET\artifact_type';
        else
            sPathOut = 'NOT_SET/artifact_type';
        end
        sOptiModel = {};
        
	case 'image_type'
        sDataRef = {['dicom_sorted',filesep,'t1_tse_tra_Kopf_0002'],['dicom_sorted',filesep,'t1_tse_tra_fs_mbh_Leber_0004']; ...
					 0												,0};
        sDataArt = {['dicom_sorted',filesep,'t1_tse_tra_Kopf_Motion_0003'],['dicom_sorted',filesep,'t1_tse_tra_fs_mbh_Leber_Motion_0005']; ...
					 1													  , 1};
        if(ispc)
            sPathOut = 'F:\Courses\INFOTECH\MasterThesis\LIUKE\NOTSET\image_type';
        else
            sPathOut = 'NOT_SET/image_type';
        end
        sOptiModel = {};
        
    case 'shim'
        
    case 'noise'
        
end

end