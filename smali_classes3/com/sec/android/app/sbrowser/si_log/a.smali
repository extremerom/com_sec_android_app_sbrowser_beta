.class public final synthetic Lcom/sec/android/app/sbrowser/si_log/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(IILjava/util/Map;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/si_log/a;->a:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/si_log/a;->b:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/si_log/a;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/si_log/a;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/a;->d:Landroid/content/Context;

    iget v1, p0, Lcom/sec/android/app/sbrowser/si_log/a;->a:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/si_log/a;->b:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/a;->c:Ljava/util/Map;

    invoke-static {v1, v2, p0, v0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->a(IILjava/util/Map;Landroid/content/Context;)V

    return-void
.end method
