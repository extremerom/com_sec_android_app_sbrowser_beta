.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreview;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips$TerraceVirtualCardTipsDelegate;


# instance fields
.field private final mParent:Landroid/view/ViewGroup;

.field private mTerrace:Lcom/sec/terrace/Terrace;

.field private mVirtualCardToolTipsLayout:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreview;->mParent:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreview;->mTerrace:Lcom/sec/terrace/Terrace;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getVirtualCardPreview()Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;->setDelegate(Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips$TerraceVirtualCardTipsDelegate;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, "VirtualCardPreview"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreview;->mVirtualCardToolTipsLayout:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->close()V

    :cond_0
    return-void
.end method

.method public showVirtualCardTips(Landroid/view/View;Landroid/content/Context;FFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "VirtualCardPreview"

    const-string v3, "showVirtualCardTips"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    new-instance v4, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

    invoke-direct {v4, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreview;->mVirtualCardToolTipsLayout:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreview;->mTerrace:Lcom/sec/terrace/Terrace;

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move/from16 v17, p13

    move-object/from16 v18, p14

    invoke-virtual/range {v4 .. v18}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->showVirtualCardReviewTips(Lcom/sec/terrace/Terrace;FFFLandroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V

    :cond_0
    return-void
.end method
