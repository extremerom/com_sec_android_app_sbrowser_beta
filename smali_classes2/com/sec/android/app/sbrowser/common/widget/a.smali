.class public final synthetic Lcom/sec/android/app/sbrowser/common/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/a;->a:Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    check-cast p2, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/a;->a:Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->a(Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;)V

    return-void
.end method
