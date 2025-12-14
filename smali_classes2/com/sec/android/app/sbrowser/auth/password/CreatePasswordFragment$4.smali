.class Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$4;->this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_0

    return p1

    :cond_0
    if-eqz p2, :cond_2

    const/4 p3, 0x6

    if-eq p2, p3, :cond_2

    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$4;->this$0:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;->handlePassword()V

    return p1
.end method
