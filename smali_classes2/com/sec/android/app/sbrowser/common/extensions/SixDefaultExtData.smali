.class public Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mExternalCrx:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external_crx"
    .end annotation
.end field

.field private mExternalVer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external_version"
    .end annotation
.end field

.field private mUpdateUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external_update_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;->mUpdateUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;->mExternalCrx:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;->mExternalVer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExternalCrx()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;->mExternalCrx:Ljava/lang/String;

    return-object p0
.end method

.method public getExternalVersion()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;->mExternalVer:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixDefaultExtData;->mUpdateUrl:Ljava/lang/String;

    return-object p0
.end method
