.class public final synthetic Lcom/sec/android/app/sbrowser/common/flexmode/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/flexmode/a;->a:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/a;->a:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->a(Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;Ljava/lang/Runnable;)V

    return-void
.end method
