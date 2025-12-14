.class public final Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView$createCustomTabLinkMovementMethod$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView;->createCustomTabLinkMovementMethod(Landroid/widget/CheckBox;)Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "com/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView$createCustomTabLinkMovementMethod$1",
        "Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod$Listener;",
        "Ldb/r;",
        "onActionDown",
        "()V",
        "onActionUp",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $checkBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView;


# direct methods
.method public constructor <init>(Landroid/widget/CheckBox;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView$createCustomTabLinkMovementMethod$1;->$checkBox:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView$createCustomTabLinkMovementMethod$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView$createCustomTabLinkMovementMethod$1;->$checkBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onActionUp()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView$createCustomTabLinkMovementMethod$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView$createCustomTabLinkMovementMethod$1;->$checkBox:Landroid/widget/CheckBox;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView;->access$onLinkActionUp(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView;Landroid/widget/CheckBox;)V

    return-void
.end method
