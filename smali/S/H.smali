.class public final LS/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/f;


# static fields
.field public static final a:LS/H;

.field public static final b:LA0/g;

.field public static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LS/H;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LS/H;->a:LS/H;

    sget-object v0, LS/c0;->b:LA0/g;

    sput-object v0, LS/H;->b:LA0/g;

    const/4 v0, 0x1

    sput-boolean v0, LS/H;->c:Z

    return-void
.end method


# virtual methods
.method public final getKey()LA0/g;
    .locals 0

    sget-object p0, LS/H;->b:LA0/g;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    sget-boolean p0, LS/H;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
