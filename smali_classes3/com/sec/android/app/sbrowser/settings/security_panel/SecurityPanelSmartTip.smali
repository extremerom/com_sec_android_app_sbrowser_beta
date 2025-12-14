.class public Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;
.super Lcom/sec/android/app/sbrowser/common/widget/SmartTip;
.source "SourceFile"


# instance fields
.field mTipMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getButtonResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMessageResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMessageString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;->mTipMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setTipMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;->mTipMessage:Ljava/lang/String;

    return-void
.end method

.method public showAsExpanded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
