.class public Lcom/sec/android/app/sbrowser/auth/iris/DexIrisAuthPromptActivity;
.super Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthPromptActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public setContentView()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/auth/AuthActivity;->setContentView()V

    const v0, 0x7f0e046f

    invoke-virtual {p0, v0}, Lm/n;->setContentView(I)V

    return-void
.end method

.method public shouldApplyDialogStyle()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
