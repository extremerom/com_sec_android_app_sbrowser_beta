.class public final LPb/y;
.super LPb/A;
.source "SourceFile"

# interfaces
.implements LYb/d;


# instance fields
.field public final a:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPb/y;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, LPb/y;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public final u()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method
