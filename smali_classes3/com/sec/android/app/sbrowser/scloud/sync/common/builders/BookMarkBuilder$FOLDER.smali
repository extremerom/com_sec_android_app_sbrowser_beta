.class final Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder$FOLDER;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FOLDER"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sync4"

    const-string v1, "_id"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder$FOLDER;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/BookMarkBuilder$FOLDER;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method
