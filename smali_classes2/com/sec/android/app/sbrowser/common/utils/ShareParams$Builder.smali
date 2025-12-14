.class public Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/ShareParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCallback:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

.field private mChooserExtras:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mFileContentType:Ljava/lang/String;

.field private mFileUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mFromTools:Z

.field private mGridAreaDirectionForPopOver:I

.field private mShareExtras:Landroid/os/Bundle;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mGridAreaDirectionForPopOver:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/common/utils/ShareParams;
    .locals 13

    new-instance v12, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mText:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mFileContentType:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mFileUris:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mCallback:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mShareExtras:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mChooserExtras:Landroid/os/Bundle;

    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mFromTools:Z

    iget v10, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mGridAreaDirectionForPopOver:I

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;Landroid/os/Bundle;Landroid/os/Bundle;ZII)V

    return-object v12
.end method

.method public setCallback(Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;
    .locals 0
    .param p1    # Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mCallback:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    return-object p0
.end method

.method public setChooserExtras(Landroid/os/Bundle;)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mChooserExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setFileContentType(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mFileContentType:Ljava/lang/String;

    return-object p0
.end method

.method public setFileUris(Ljava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mFileUris:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setFromTools(Z)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mFromTools:Z

    return-object p0
.end method

.method public setGridAreaDirectionForPopOver(I)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mGridAreaDirectionForPopOver:I

    return-object p0
.end method

.method public setShareExtras(Landroid/os/Bundle;)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->mShareExtras:Landroid/os/Bundle;

    return-object p0
.end method
