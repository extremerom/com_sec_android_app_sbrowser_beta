.class public final LA1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LA1/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LA1/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LA1/j;->a:LA1/j;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/StrictMode$VmPolicy$Builder;)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 0
    .param p1    # Landroid/os/StrictMode$VmPolicy$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "builder"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->permitUnsafeIntentLaunch()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p0

    const-string p1, "permitUnsafeIntentLaunch(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
