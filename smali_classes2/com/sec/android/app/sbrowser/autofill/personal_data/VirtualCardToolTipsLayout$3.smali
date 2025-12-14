.class Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->showVirtualCardReviewTips(Lcom/sec/terrace/Terrace;FFFLandroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

.field final synthetic val$cvc:Ljava/lang/String;

.field final synthetic val$guid:Ljava/lang/String;

.field final synthetic val$icon:I

.field final synthetic val$iconDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$month:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$nickName:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$terrace:Lcom/sec/terrace/Terrace;

.field final synthetic val$year:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$terrace:Lcom/sec/terrace/Terrace;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$guid:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$nickName:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$number:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$month:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$year:Ljava/lang/String;

    iput-object p9, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$cvc:Ljava/lang/String;

    iput p10, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$icon:I

    iput-object p11, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$iconDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

    new-instance v12, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$terrace:Lcom/sec/terrace/Terrace;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->a(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$guid:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$name:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$nickName:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$number:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$month:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$year:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$cvc:Ljava/lang/String;

    iget v10, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$icon:I

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->val$iconDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;-><init>(Lcom/sec/terrace/Terrace;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V

    invoke-static {p1, v12}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->e(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout$3;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;->c(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardToolTipsLayout;)Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->showDialog()V

    return-void
.end method
