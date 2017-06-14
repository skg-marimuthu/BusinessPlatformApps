﻿import { DataStoreType } from '../../../../../SiteCommon/Web/enums/data-store-type';

import { ViewModelBase } from '../../../../../SiteCommon/Web/services/view-model-base';

export class Customize extends ViewModelBase {
    dailyTrigger: string = '2:00';
    dailyTriggers: string[] = [];

    async onNavigatingNext(): Promise<boolean> {
        this.MS.DataStore.addToDataStore('TaskDescription', 'Power BI Solution Template - Simplement SAP AR', DataStoreType.Public);
        this.MS.DataStore.addToDataStore('TaskDirectory', 'Simplement, Inc\\Solution Template AR', DataStoreType.Public);
        this.MS.DataStore.addToDataStore('TaskFile', 'Simplement.SolutionTemplate.AR.exe', DataStoreType.Public);
        this.MS.DataStore.addToDataStore('TaskName', 'Power BI Solution Template - Simplement SAP AR', DataStoreType.Public);
        this.MS.DataStore.addToDataStore('TaskParameters', '/u', DataStoreType.Public);
        this.MS.DataStore.addToDataStore('TaskProgram', 'cmd', DataStoreType.Public);
        this.MS.DataStore.addToDataStore('TaskStartTime', this.dailyTrigger, DataStoreType.Public);

        return true;
    }

    async onLoaded(): Promise<void> {
        this.dailyTriggers = this.MS.UtilityService.GenerateDailyTriggers();
        this.isValidated = false;
        this.useDefaultValidateButton = true;
    }

    async onValidate(): Promise<boolean> {
        super.onValidate();
        this.isValidated = true;
        this.showValidation = true;
        return this.isValidated;
    }
}