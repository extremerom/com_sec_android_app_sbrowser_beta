.class Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$3;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    const-string p1, "si__HelpIntroPageBaseView"

    const-string p2, "onScrollChange"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$3;->this$0:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->updateButtonText()V

    return-void
.end method
