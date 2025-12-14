.class public Lcom/sec/android/app/sbrowser/common/utils/ShareParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

.field private final mChooserExtras:Landroid/os/Bundle;

.field private final mContext:Landroid/content/Context;

.field private final mFileContentType:Ljava/lang/String;

.field private final mFileUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mFromTools:Z

.field private final mGridAreaDirectionForPopOver:I

.field private final mShareExtras:Landroid/os/Bundle;

.field private final mText:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;Landroid/os/Bundle;Landroid/os/Bundle;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mText:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mFileContentType:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mFileUris:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mCallback:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mShareExtras:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mChooserExtras:Landroid/os/Bundle;

    iput-boolean p9, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mFromTools:Z

    iput p10, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mGridAreaDirectionForPopOver:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;Landroid/os/Bundle;Landroid/os/Bundle;ZII)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;Landroid/os/Bundle;Landroid/os/Bundle;ZI)V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mCallback:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    return-object p0
.end method

.method public getChooserExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mChooserExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getFileContentType()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mFileContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getFileUris()Ljava/util/ArrayList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mFileUris:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getFromTools()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mFromTools:Z

    return p0
.end method

.method public getGridAreaDirectionForPopOver()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mGridAreaDirectionForPopOver:I

    return p0
.end method

.method public getShareExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mShareExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;->mTitle:Ljava/lang/String;

    return-object p0
.end method
