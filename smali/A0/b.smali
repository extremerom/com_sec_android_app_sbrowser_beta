.class public final LA0/b;
.super LAb/E;
.source "SourceFile"


# static fields
.field public static final a:LA0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LA0/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LA0/b;->a:LA0/b;

    return-void
.end method


# virtual methods
.method public final d(LA0/g;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h(LA0/g;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, ""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
