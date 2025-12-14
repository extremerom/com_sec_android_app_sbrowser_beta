.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HeaderBarViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\u001b\u0010\u0010\u001a\u00020\u000c2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0004\u0008\u0010\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/BaseViewHolder;",
        "Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;",
        "binding",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
        "listener",
        "",
        "isForPreview",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Z)V",
        "Ldb/r;",
        "updateIconColor",
        "()V",
        "updateButtonVisibility",
        "bind",
        "",
        "",
        "payloads",
        "(Ljava/util/List;)V",
        "Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;",
        "getBinding",
        "()Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;",
        "samsungAccountProfileButtonHelper",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;",
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
.field private final binding:Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final samsungAccountProfileButtonHelper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Z)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
            "Z)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/BaseViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->context:Landroid/content/Context;

    new-instance p4, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;->account:Landroid/widget/ImageButton;

    const-string v0, "account"

    invoke-static {p2, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LFa/b;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1, p0}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p4, p3, p2, p5, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;-><init>(Landroid/content/Context;Landroid/widget/ImageButton;ZLandroid/view/View$OnClickListener;)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->samsungAccountProfileButtonHelper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->samsungAccountProfileButtonHelper$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->updateButtonVisibility$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;ZLcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->updateButtonVisibility$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;ZLcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method private static final samsungAccountProfileButtonHelper$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->context:Landroid/content/Context;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->onClickAccountProfile(Landroid/content/Context;)V

    const-string p0, "100"

    const-string p1, "1072"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateButtonVisibility()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const/4 v2, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->context:Landroid/content/Context;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;->generalManagement:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;->generalManagement:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/b;

    invoke-direct {v4, v2, v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/b;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;ZLcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->samsungAccountProfileButtonHelper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->setAccountButtonVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;->generalManagement:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;->generalManagement:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/c;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->samsungAccountProfileButtonHelper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->setAccountButtonVisibility(I)V

    :goto_0
    return-void
.end method

.method private static final updateButtonVisibility$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;ZLcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    if-nez p1, :cond_0

    iget-object p1, p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->onClickEdit(Landroid/content/Context;)V

    const-string p0, "100"

    const-string p1, "1071"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final updateButtonVisibility$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->onClickEdit(Landroid/content/Context;)V

    const-string p0, "100"

    const-string p1, "1071"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateIconColor()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getIsSolidColorLightThemed()Landroidx/lifecycle/S;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f060895

    goto :goto_0

    :cond_0
    const v1, 0x7f060896

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;->generalManagement:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->updateIconColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->updateButtonVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->samsungAccountProfileButtonHelper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getIsSolidColorLightThemed()Landroidx/lifecycle/S;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->updateIconColor(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;->isForPreview()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;->generalManagement:Landroid/widget/ImageButton;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;->generalManagement:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v1, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;->generalManagement:Landroid/widget/ImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;->generalManagement:Landroid/widget/ImageButton;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method

.method public final bind(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "payloads"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "button_visibility"

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->updateButtonVisibility()V

    goto :goto_0

    :cond_1
    const-string v1, "theme"

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->updateIconColor()V

    goto :goto_0

    :cond_2
    const-string v1, "solid_color_theme_changed"

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->updateIconColor()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->samsungAccountProfileButtonHelper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getIsSolidColorLightThemed()Landroidx/lifecycle/S;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SamsungAccountProfileButtonHelper;->updateIconColor(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method
