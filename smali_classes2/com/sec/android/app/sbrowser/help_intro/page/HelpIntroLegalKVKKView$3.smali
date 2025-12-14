.class Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->createCustomTabLinkMovementMethod(Landroid/widget/CheckBox;)Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$3;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$3;->val$checkBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onActionUp()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$3;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->d(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;Landroid/widget/CheckBox;)V

    return-void
.end method
