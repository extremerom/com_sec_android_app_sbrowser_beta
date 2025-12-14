.class Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;->initialize(Landroid/database/sqlite/SQLiteDatabase;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher$1;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungCipher;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "card_number_encrypted"

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
