﻿import { ViewModelBase } from '../services/view-model-base';

export class Uninstall extends ViewModelBase {
    architectureDiagram: string = '';
    downloadLink: string;
    features: string[] = [];
    isDownload: boolean = false;
    isEvaluation: boolean = false;
    pricing: string[] = [];
    showPrivacy: boolean;
    subtitle: string;
    templateName: string = '';
    uninstallList: string[] = [];

    async onLoaded(): Promise<void> {
        this.isValidated = true;
        this.showPrivacy = true;

        if (this.isDownload && !this.isEvaluation) {
            let response = await this.MS.HttpService.executeAsync('Microsoft-GetMsiDownloadLink');
            this.downloadLink = response.Body.value;
        }
    }
}