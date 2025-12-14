.class public Lcom/sec/terrace/TerraceContextMenuParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/TerraceContextMenuParams$MediaType;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mEventX:I

.field private final mEventY:I

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mIsAnchor:Z

.field private final mIsEditable:Z

.field private mIsEditableEmpty:Z

.field private final mIsImage:Z

.field private final mIsSelectedText:Z

.field private final mIsVideo:Z

.field private final mLinkText:Ljava/lang/String;

.field private final mLinkUrl:Ljava/lang/String;

.field private final mPageUrl:Ljava/lang/String;

.field private final mReferrer:Lorg/chromium/content_public/common/Referrer;

.field private final mSourceType:I

.field private final mSrcUrl:Ljava/lang/String;

.field private final mUnfilteredLinkUrl:Ljava/lang/String;

.field private mUrlForLinkToTextHighlight:Ljava/lang/String;


# direct methods
.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/content_public/common/Referrer;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mPageUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mLinkUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mLinkText:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mUnfilteredLinkUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mSrcUrl:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mIsEditable:Z

    iput-object p11, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mReferrer:Lorg/chromium/content_public/common/Referrer;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 p5, 0x1

    xor-int/2addr p4, p5

    iput-boolean p4, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mIsAnchor:Z

    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    xor-int/2addr p4, p5

    iput-boolean p4, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mIsSelectedText:Z

    const/4 p4, 0x0

    if-ne p3, p5, :cond_0

    move p6, p5

    goto :goto_0

    :cond_0
    move p6, p4

    :goto_0
    iput-boolean p6, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mIsImage:Z

    const/4 p6, 0x2

    if-ne p3, p6, :cond_1

    goto :goto_1

    :cond_1
    move p5, p4

    :goto_1
    iput-boolean p5, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mIsVideo:Z

    iput p1, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mEventX:I

    iput p2, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mEventY:I

    iput p12, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mImageWidth:I

    iput p13, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mImageHeight:I

    iput p14, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mSourceType:I

    return-void
.end method

.method private static create(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIII)Lcom/sec/terrace/TerraceContextMenuParams;
    .locals 16
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v12, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/chromium/content_public/common/Referrer;

    move-object/from16 v1, p10

    move/from16 v2, p11

    invoke-direct {v0, v1, v2}, Lorg/chromium/content_public/common/Referrer;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/sec/terrace/TerraceContextMenuParams;

    move-object v1, v0

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-direct/range {v1 .. v15}, Lcom/sec/terrace/TerraceContextMenuParams;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/content_public/common/Referrer;III)V

    return-object v0
.end method

.method public static createTerraceContextMenuParamsForTest(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIII)Lcom/sec/terrace/TerraceContextMenuParams;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static/range {p0 .. p14}, Lcom/sec/terrace/TerraceContextMenuParams;->create(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIII)Lcom/sec/terrace/TerraceContextMenuParams;

    move-result-object p0

    return-object p0
.end method

.method private onLinkToTextHighlightGenerated(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mUrlForLinkToTextHighlight:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEventX()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mEventX:I

    return p0
.end method

.method public getEventY()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mEventY:I

    return p0
.end method

.method public getImageHeight()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mImageHeight:I

    return p0
.end method

.method public getImageWidth()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mImageWidth:I

    return p0
.end method

.method public getLinkText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mLinkText:Ljava/lang/String;

    return-object p0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mLinkUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mPageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getReferrer()Lorg/chromium/content_public/common/Referrer;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mReferrer:Lorg/chromium/content_public/common/Referrer;

    return-object p0
.end method

.method public getSourceType()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mSourceType:I

    return p0
.end method

.method public getSrcUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mSrcUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUnfilteredLinkUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mUnfilteredLinkUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUrlForLinkToHighlight()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mUrlForLinkToTextHighlight:Ljava/lang/String;

    return-object p0
.end method

.method public isAnchor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mIsAnchor:Z

    return p0
.end method

.method public isEditable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mIsEditable:Z

    return p0
.end method

.method public isEditableEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mIsEditableEmpty:Z

    return p0
.end method

.method public isImage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mIsImage:Z

    return p0
.end method

.method public isSelectedText()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mIsSelectedText:Z

    return p0
.end method

.method public isVideo()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mIsVideo:Z

    return p0
.end method

.method public onLinkToTextHighlightGeneratedForTest(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/terrace/TerraceContextMenuParams;->onLinkToTextHighlightGenerated(Ljava/lang/String;)V

    return-void
.end method

.method public setIsEditableEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/TerraceContextMenuParams;->mIsEditableEmpty:Z

    return-void
.end method
