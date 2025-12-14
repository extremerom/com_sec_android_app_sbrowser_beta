.class public final synthetic Lcom/sec/android/app/sbrowser/toolbar/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar/MoreMenuPageIndicator$PageSelectListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/t;->a:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/t;->a:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->d(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;I)V

    return-void
.end method
