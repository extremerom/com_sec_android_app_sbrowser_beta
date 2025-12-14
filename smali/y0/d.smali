.class public final Ly0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg7/t;

.field public final b:Lg7/t;

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg7/t;

    invoke-direct {v0}, Lg7/t;-><init>()V

    iput-object v0, p0, Ly0/d;->a:Lg7/t;

    new-instance v0, Lg7/t;

    invoke-direct {v0}, Lg7/t;-><init>()V

    iput-object v0, p0, Ly0/d;->b:Lg7/t;

    sget-wide v0, Lr0/b;->b:J

    iput-wide v0, p0, Ly0/d;->c:J

    return-void
.end method
