.class public final Lj4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/c;


# static fields
.field public static final a:Lj4/b;

.field public static final b:Lj4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj4/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj4/b;->a:Lj4/b;

    new-instance v0, Lj4/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj4/b;->b:Lj4/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Li4/a;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
