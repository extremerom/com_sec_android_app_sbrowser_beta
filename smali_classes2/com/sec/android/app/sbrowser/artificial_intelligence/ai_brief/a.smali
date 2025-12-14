.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/a;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/a;->p:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/a;->q:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/a;->r:Ljava/lang/String;

    iput p6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/a;->s:I

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/a;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/a;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/a;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/a;->r:Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/a;->s:I

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    move-result p0

    return p0
.end method
