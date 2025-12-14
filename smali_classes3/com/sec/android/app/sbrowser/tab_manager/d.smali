.class public final synthetic Lcom/sec/android/app/sbrowser/tab_manager/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/tab_manager/TabModel;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/d;->a:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_manager/d;->b:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/sbrowser/tab_manager/d;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/d;->c:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/d;->a:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/d;->b:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->d(Lcom/sec/android/app/sbrowser/tab_manager/TabModel;Ljava/lang/String;I)V

    return-void
.end method
