.class public final LVb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LVb/e;


# static fields
.field public static final a:LVb/b;

.field public static final b:LVb/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LVb/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LVb/b;->a:LVb/b;

    new-instance v0, LVb/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LVb/b;->b:LVb/b;

    return-void
.end method


# virtual methods
.method public a(LPb/B;)LJb/W;
    .locals 0

    const-string p0, "javaTypeParameter"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
