.class public final LQ/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LA7/h;

.field public final b:Ljava/lang/Object;

.field public final c:J

.field public final d:Ltb/m;

.field public final e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public f:LQ/m;

.field public g:J

.field public h:J

.field public final i:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(Ljava/lang/Object;LA7/h;LQ/m;JLjava/lang/Object;JLsb/a;)V
    .locals 1

    const-string v0, "typeConverter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialVelocityVector"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LQ/g;->a:LA7/h;

    iput-object p6, p0, LQ/g;->b:Ljava/lang/Object;

    iput-wide p7, p0, LQ/g;->c:J

    check-cast p9, Ltb/m;

    iput-object p9, p0, LQ/g;->d:Ltb/m;

    sget-object p2, La0/V;->f:La0/V;

    invoke-static {p1, p2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, LQ/g;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p3}, LG5/w;->b(LQ/m;)LQ/m;

    move-result-object p1

    iput-object p1, p0, LQ/g;->f:LQ/m;

    iput-wide p4, p0, LQ/g;->g:J

    const-wide/high16 p3, -0x8000000000000000L

    iput-wide p3, p0, LQ/g;->h:J

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, LQ/g;->i:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method
