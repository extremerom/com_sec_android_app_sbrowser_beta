.class public Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;
.super Lcom/google/android/material/appbar/AppBarLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout$Delegate;
    }
.end annotation


# instance fields
.field mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout$Delegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout$Delegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout$Delegate;

    return-void
.end method

.method public setLayoutBehavior()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/d;

    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;)V

    iput-object v2, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->r:Lcom/google/android/material/appbar/c;

    invoke-virtual {v0, v1}, LR0/d;->b(LR0/c;)V

    return-void
.end method
