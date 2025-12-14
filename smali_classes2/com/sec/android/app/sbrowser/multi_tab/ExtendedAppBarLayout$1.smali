.class Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout$1;
.super Lcom/google/android/material/appbar/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;->setLayoutBehavior()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDrag(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .locals 0
    .param p1    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout$Delegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout$Delegate;->isOnTop()Z

    move-result p0

    return p0
.end method
