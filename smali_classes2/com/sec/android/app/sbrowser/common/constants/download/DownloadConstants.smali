.class public Lcom/sec/android/app/sbrowser/common/constants/download/DownloadConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SAVE_ALL_DELIMITER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/download/DownloadConstants;->SAVE_ALL_DELIMITER:Ljava/lang/String;

    return-void
.end method
