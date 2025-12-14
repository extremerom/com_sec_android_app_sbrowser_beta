.class public abstract Lorg/chromium/components/policy/PolicyProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCombinedPolicyProvider:Lorg/chromium/components/policy/CombinedPolicyProvider;

.field private mSource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/components/policy/PolicyProvider;->mSource:I

    return-void
.end method


# virtual methods
.method public notifySettingsAvailable(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#notifySettingsAvailable() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/chromium/components/policy/PolicyProvider;->mSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PolicyProvider"

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/components/policy/PolicyProvider;->mCombinedPolicyProvider:Lorg/chromium/components/policy/CombinedPolicyProvider;

    iget p0, p0, Lorg/chromium/components/policy/PolicyProvider;->mSource:I

    invoke-virtual {v0, p0, p1}, Lorg/chromium/components/policy/CombinedPolicyProvider;->onSettingsAvailable(ILandroid/os/Bundle;)V

    return-void
.end method

.method public abstract refresh()V
.end method

.method public final setManagerAndSource(Lorg/chromium/components/policy/CombinedPolicyProvider;I)V
    .locals 0
    .annotation build Lorg/chromium/build/annotations/Initializer;
    .end annotation

    iput p2, p0, Lorg/chromium/components/policy/PolicyProvider;->mSource:I

    iput-object p1, p0, Lorg/chromium/components/policy/PolicyProvider;->mCombinedPolicyProvider:Lorg/chromium/components/policy/CombinedPolicyProvider;

    invoke-virtual {p0}, Lorg/chromium/components/policy/PolicyProvider;->startListeningForPolicyChanges()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "#setManagerAndSource() "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/chromium/components/policy/PolicyProvider;->mSource:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PolicyProvider"

    invoke-static {p1, p0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startListeningForPolicyChanges()V
    .locals 0

    return-void
.end method
