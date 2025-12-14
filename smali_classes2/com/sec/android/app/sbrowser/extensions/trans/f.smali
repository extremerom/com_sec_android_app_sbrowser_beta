.class public final synthetic Lcom/sec/android/app/sbrowser/extensions/trans/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/f;->a:Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/f;->b:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/extensions/trans/f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/extensions/trans/f;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/extensions/trans/f;->f:Ljava/lang/String;

    iput-wide p7, p0, Lcom/sec/android/app/sbrowser/extensions/trans/f;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/f;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/trans/f;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/f;->a:Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/f;->b:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/f;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/trans/f;->f:Ljava/lang/String;

    iget-wide v6, p0, Lcom/sec/android/app/sbrowser/extensions/trans/f;->g:J

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->w(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
