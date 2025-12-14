.class public final Lc2/x;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Landroidx/glance/session/SessionWorker;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/glance/session/SessionWorker;

.field public d:I


# direct methods
.method public constructor <init>(Landroidx/glance/session/SessionWorker;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lc2/x;->c:Landroidx/glance/session/SessionWorker;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc2/x;->b:Ljava/lang/Object;

    iget p1, p0, Lc2/x;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc2/x;->d:I

    iget-object p1, p0, Lc2/x;->c:Landroidx/glance/session/SessionWorker;

    invoke-virtual {p1, p0}, Landroidx/glance/session/SessionWorker;->f(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
