.class public final LUc/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lib/h;

.field public final b:[Ljava/lang/Object;

.field public final c:[LUc/B;

.field public d:I


# direct methods
.method public constructor <init>(ILib/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LUc/E;->a:Lib/h;

    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, LUc/E;->b:[Ljava/lang/Object;

    new-array p1, p1, [LUc/B;

    iput-object p1, p0, LUc/E;->c:[LUc/B;

    return-void
.end method
