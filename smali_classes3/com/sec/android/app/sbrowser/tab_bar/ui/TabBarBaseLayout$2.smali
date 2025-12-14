.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeaderDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackground(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->c(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;)Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabGroupScrollHeaderBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getTabGroupHeaderRipple()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$2;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->c(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;)Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabGroupHeaderRipple()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
