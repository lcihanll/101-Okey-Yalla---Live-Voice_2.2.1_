.class public Lcom/google/firebase/messaging/cpp/RegistrationIntentService;
.super Landroidx/core/app/JobIntentService;
.source "RegistrationIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FirebaseRegService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method private static generateTokenByteBuffer(Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p0

    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->startSerializedTokenReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    invoke-static {v0, p0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->addToken(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->endSerializedTokenReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->startSerializedEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->addEventType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    invoke-static {v0, p0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->addEvent(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {v0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->endSerializedEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static writeTokenToInternalStorage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/google/firebase/messaging/cpp/RegistrationIntentService;->generateTokenByteBuffer(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "FIREBASE_CLOUD_MESSAGING_LOCKFILE"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    const-string v2, "FIREBASE_CLOUD_MESSAGING_LOCAL_STORAGE"

    const v3, 0x8000

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :goto_1
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    throw p0
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/messaging/cpp/RegistrationIntentService$1;

    invoke-direct {v0, p0, p0}, Lcom/google/firebase/messaging/cpp/RegistrationIntentService$1;-><init>(Lcom/google/firebase/messaging/cpp/RegistrationIntentService;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
