.class public Lcom/osp/app/signin/sasdk/common/Encryption;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHAR_SET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final KEY_SIZE:I = 0x10

.field private static final SHA_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final TAG:Ljava/lang/String; = "Encryption"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Encryption class can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static base64Encode([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encrypt(Lcom/osp/app/signin/sasdk/server/SvcParamVO;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getEntryPointResponseData()Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->getChkDoNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getEntryPointResponseData()Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->getPkiPublicKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SvcParamVO params : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Encryption"

    invoke-static {v3, v2}, Lcom/osp/app/signin/sasdk/common/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/osp/app/signin/sasdk/common/Encryption;->getKey(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/osp/app/signin/sasdk/common/Encryption;->getEncryptedKey([BLjava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-static {p1, v2, p0}, Lcom/osp/app/signin/sasdk/common/Encryption;->getEncryptedValue([B[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-static {v2}, Lzd/d;->b([B)[C

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([C)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "chkDoNum"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "svcEncParam"

    invoke-virtual {v2, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "svcEncKY"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "svcEncIV"

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateCodeChallenge(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "Encryption"

    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/osp/app/signin/sasdk/common/Encryption;->base64Encode([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\+"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception occurred during generateCodeChallenge"

    invoke-static {v0, v2, v1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code_verifier : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "code_challenge : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getEncryptedKey([BLjava/security/PublicKey;)Ljava/lang/String;
    .locals 2

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance p1, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method private static getEncryptedValue([B[BLjava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    array-length v2, p0

    const-string v3, "AES"

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance p0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-direct {p0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method private static getKey(Ljava/lang/String;I)[B
    .locals 2

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/common/Encryption;->hashData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0, v1, p1}, Lcom/osp/app/signin/sasdk/common/Encryption;->pbkdf2([C[BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static hashData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/common/Encryption;->base64Encode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Encryption"

    const-string v1, "Exception occurred during hashData"

    invoke-static {v0, v1, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static pbkdf2([C[BI)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/16 v3, 0x20

    const/4 v4, 0x1

    new-instance v5, LBd/a;

    invoke-direct {v5}, LBd/a;-><init>()V

    const/16 v6, 0x40

    new-array v7, v6, [I

    iput-object v7, v5, LBd/a;->l:[I

    invoke-virtual {v5}, LBd/a;->i()V

    new-instance v7, LCd/a;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v5, v7, LCd/a;->a:LBd/a;

    iput v6, v7, LCd/a;->b:I

    new-array v5, v6, [B

    iput-object v5, v7, LCd/a;->e:[B

    const/16 v5, 0x60

    new-array v5, v5, [B

    iput-object v5, v7, LCd/a;->f:[B

    new-array v5, v3, [B

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    sget v9, LDd/b;->a:I

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {v0, v9}, LDd/b;->a([CLjava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot encode string to byte array!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, v8, [B

    :goto_0
    const/4 v9, 0x4

    new-array v10, v9, [B

    new-array v11, v3, [B

    array-length v12, v0

    new-array v13, v12, [B

    invoke-static {v0, v8, v13, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v7, LCd/a;->a:LBd/a;

    invoke-virtual {v0}, LBd/a;->i()V

    iget-object v14, v7, LCd/a;->e:[B

    iget v15, v7, LCd/a;->b:I

    if-le v12, v15, :cond_1

    invoke-virtual {v0, v13, v8, v12}, LBd/a;->k([BII)V

    invoke-virtual {v0, v8, v14}, LBd/a;->f(I[B)V

    move v12, v3

    goto :goto_1

    :cond_1
    invoke-static {v13, v8, v14, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    array-length v13, v14

    if-ge v12, v13, :cond_2

    aput-byte v8, v14, v12

    add-int/2addr v12, v4

    goto :goto_1

    :cond_2
    iget-object v12, v7, LCd/a;->f:[B

    invoke-static {v14, v8, v12, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v13, v8

    :goto_2
    if-ge v13, v15, :cond_3

    aget-byte v16, v14, v13

    xor-int/lit8 v3, v16, 0x36

    int-to-byte v3, v3

    aput-byte v3, v14, v13

    add-int/2addr v13, v4

    const/16 v3, 0x20

    goto :goto_2

    :cond_3
    move v3, v8

    :goto_3
    if-ge v3, v15, :cond_4

    aget-byte v13, v12, v3

    xor-int/lit8 v13, v13, 0x5c

    int-to-byte v13, v13

    aput-byte v13, v12, v3

    add-int/2addr v3, v4

    goto :goto_3

    :cond_4
    new-instance v3, LBd/a;

    invoke-direct {v3, v0}, LBd/a;-><init>(LBd/a;)V

    new-array v13, v6, [I

    iput-object v13, v3, LBd/a;->l:[I

    invoke-virtual {v3, v0}, LBd/a;->e(LBd/a;)V

    iput-object v3, v7, LCd/a;->d:LBd/a;

    invoke-virtual {v3, v12, v8, v15}, LBd/a;->k([BII)V

    array-length v3, v14

    invoke-virtual {v0, v14, v8, v3}, LBd/a;->k([BII)V

    new-instance v3, LBd/a;

    invoke-direct {v3, v0}, LBd/a;-><init>(LBd/a;)V

    new-array v6, v6, [I

    iput-object v6, v3, LBd/a;->l:[I

    invoke-virtual {v3, v0}, LBd/a;->e(LBd/a;)V

    iput-object v3, v7, LCd/a;->c:LBd/a;

    move v0, v4

    move v3, v8

    :goto_4
    if-gt v0, v4, :cond_a

    const/4 v6, 0x3

    :goto_5
    aget-byte v12, v10, v6

    add-int/2addr v12, v4

    int-to-byte v12, v12

    aput-byte v12, v10, v6

    if-nez v12, :cond_5

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_5
    if-eqz v2, :cond_9

    if-eqz v1, :cond_6

    array-length v6, v1

    iget-object v12, v7, LCd/a;->a:LBd/a;

    invoke-virtual {v12, v1, v8, v6}, LBd/a;->k([BII)V

    :cond_6
    iget-object v6, v7, LCd/a;->a:LBd/a;

    invoke-virtual {v6, v10, v8, v9}, LBd/a;->k([BII)V

    invoke-virtual {v7, v5}, LCd/a;->a([B)V

    const/16 v6, 0x20

    invoke-static {v5, v8, v11, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v12, v4

    :goto_6
    if-ge v12, v2, :cond_8

    iget-object v13, v7, LCd/a;->a:LBd/a;

    invoke-virtual {v13, v5, v8, v6}, LBd/a;->k([BII)V

    invoke-virtual {v7, v5}, LCd/a;->a([B)V

    move v13, v8

    :goto_7
    if-eq v13, v6, :cond_7

    add-int v14, v3, v13

    aget-byte v15, v11, v14

    aget-byte v16, v5, v13

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v11, v14

    add-int/2addr v13, v4

    goto :goto_7

    :cond_7
    add-int/2addr v12, v4

    goto :goto_6

    :cond_8
    add-int/2addr v3, v6

    add-int/2addr v0, v4

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iteration count must be at least 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/16 v0, 0x10

    new-array v1, v0, [B

    invoke-static {v11, v8, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v0, [B

    invoke-static {v1, v8, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
