.class public Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDatabaseName:Ljava/lang/String;

.field private mDatabaseVersion:I

.field private mKeyStoreAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration$Builder;->mDatabaseName:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration$Builder;->mDatabaseVersion:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration$Builder;->mKeyStoreAlias:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public setDatabaseName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration$Builder;->mDatabaseName:Ljava/lang/String;

    return-object p0
.end method

.method public setDatabaseVersion(I)Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration$Builder;->mDatabaseVersion:I

    return-object p0
.end method

.method public setKeyStoreAlias(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration$Builder;->mKeyStoreAlias:Ljava/lang/String;

    return-object p0
.end method
