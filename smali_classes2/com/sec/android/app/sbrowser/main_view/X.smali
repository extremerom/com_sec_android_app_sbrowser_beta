.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler$EventListener;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/X;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/X;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onInitialized()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/X;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/X;->b:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    return-void
.end method
