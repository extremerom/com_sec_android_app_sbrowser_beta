.class public final synthetic Lcom/sec/android/app/sbrowser/tab_manager/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/tab_manager/TabModel;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/e;->a:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_manager/e;->b:I

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/tab_manager/e;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/e;->c:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/e;->a:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/e;->b:I

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->b(Lcom/sec/android/app/sbrowser/tab_manager/TabModel;IZ)V

    return-void
.end method
