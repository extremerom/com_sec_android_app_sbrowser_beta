.class public final LV/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:LQ/d;

.field public c:J

.field public final d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, LV/N;->a:I

    new-instance p3, LQ/d;

    new-instance v0, LH0/i;

    invoke-direct {v0, p1, p2}, LH0/i;-><init>(J)V

    sget-object v1, LQ/H;->b:LA7/h;

    invoke-direct {p3, v0, v1}, LQ/d;-><init>(LH0/i;LA7/h;)V

    iput-object p3, p0, LV/N;->b:LQ/d;

    iput-wide p1, p0, LV/N;->c:J

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object p2, La0/V;->f:La0/V;

    invoke-static {p1, p2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, LV/N;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method
