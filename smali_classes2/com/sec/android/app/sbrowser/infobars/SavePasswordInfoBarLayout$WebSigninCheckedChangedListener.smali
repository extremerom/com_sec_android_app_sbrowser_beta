.class Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$WebSigninCheckedChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebSigninCheckedChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$WebSigninCheckedChangedListener;->this$0:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$WebSigninCheckedChangedListener;->this$0:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->k(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)Landroid/widget/Button;

    move-result-object p1

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$WebSigninCheckedChangedListener;->this$0:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->k(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$WebSigninCheckedChangedListener;->this$0:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->m(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$WebSigninCheckedChangedListener;->this$0:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->g(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordSavePasswordCheckboxChanged(Ljava/lang/String;Z)V

    return-void
.end method
