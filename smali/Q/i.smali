.class public final LQ/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/K0;


# instance fields
.field public final a:LA7/h;

.field public final b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public c:LQ/m;

.field public d:J

.field public e:J

.field public f:Z


# direct methods
.method public synthetic constructor <init>(LA7/h;Ljava/lang/Object;LQ/m;I)V
    .locals 9

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    const/4 v8, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    const-wide/high16 v6, -0x8000000000000000L

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, LQ/i;-><init>(LA7/h;Ljava/lang/Object;LQ/m;JJZ)V

    return-void
.end method

.method public constructor <init>(LA7/h;Ljava/lang/Object;LQ/m;JJZ)V
    .locals 1

    const-string v0, "typeConverter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ/i;->a:LA7/h;

    sget-object v0, La0/V;->f:La0/V;

    invoke-static {p2, v0}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, LQ/i;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    if-eqz p3, :cond_0

    invoke-static {p3}, LG5/w;->b(LQ/m;)LQ/m;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, LA7/h;->a:Ljava/lang/Object;

    check-cast p1, Ltb/m;

    invoke-interface {p1, p2}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LQ/m;

    const-string p2, "<this>"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LQ/m;->c()LQ/m;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LQ/i;->c:LQ/m;

    iput-wide p4, p0, LQ/i;->d:J

    iput-wide p6, p0, LQ/i;->e:J

    iput-boolean p8, p0, LQ/i;->f:Z

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LQ/i;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimationState(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LQ/i;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", velocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LQ/i;->a:LA7/h;

    iget-object v1, v1, LA7/h;->b:Ljava/lang/Object;

    check-cast v1, Ltb/m;

    iget-object v2, p0, LQ/i;->c:LQ/m;

    invoke-interface {v1, v2}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LQ/i;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastFrameTimeNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LQ/i;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", finishedTimeNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LQ/i;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
