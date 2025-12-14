.class public final Lb0/c;
.super LE5/t;
.source "SourceFile"


# instance fields
.field public final b:Lb0/D;

.field public final c:Lb0/D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb0/D;

    invoke-direct {v0}, Lb0/D;-><init>()V

    iput-object v0, p0, Lb0/c;->b:Lb0/D;

    new-instance v0, Lb0/D;

    invoke-direct {v0}, Lb0/D;-><init>()V

    iput-object v0, p0, Lb0/c;->c:Lb0/D;

    return-void
.end method
