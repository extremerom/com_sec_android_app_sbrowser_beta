.class public abstract LJ2/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ2/a0;


# instance fields
.field private final identityHash:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final legacyIdentityHash:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LJ2/Z;->version:I

    iput-object p2, p0, LJ2/Z;->identityHash:Ljava/lang/String;

    iput-object p3, p0, LJ2/Z;->legacyIdentityHash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createAllTables(LS2/a;)V
.end method

.method public abstract dropAllTables(LS2/a;)V
.end method

.method public final getIdentityHash()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ2/Z;->identityHash:Ljava/lang/String;

    return-object p0
.end method

.method public final getLegacyIdentityHash()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ2/Z;->legacyIdentityHash:Ljava/lang/String;

    return-object p0
.end method

.method public final getVersion()I
    .locals 0

    iget p0, p0, LJ2/Z;->version:I

    return p0
.end method

.method public abstract onCreate(LS2/a;)V
.end method

.method public abstract onOpen(LS2/a;)V
.end method

.method public abstract onPostMigrate(LS2/a;)V
.end method

.method public abstract onPreMigrate(LS2/a;)V
.end method

.method public abstract onValidateSchema(LS2/a;)LJ2/Y;
.end method
