.class public final LW/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW/n;


# instance fields
.field public final a:I

.field public final b:J

.field public c:Lz0/s;

.field public d:Z


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LW/o;->a:I

    iput-wide p2, p0, LW/o;->b:J

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, LW/o;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LW/o;->d:Z

    iget-object v0, p0, LW/o;->c:Lz0/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz0/s;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LW/o;->c:Lz0/s;

    :cond_1
    return-void
.end method
